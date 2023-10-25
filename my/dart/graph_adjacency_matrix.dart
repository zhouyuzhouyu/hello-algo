class GraphAdjMat {
  List<int> vertices = [];
  List<List<int>> adjMat = [];

  GraphAdjMat(List<int> vertices, List<List<int>> edges) {
    this.vertices = [];
    this.adjMat = [];

    for (int val in vertices) {
      addVertex(val);
    }
    for (List<int> e in edges) {
      addEdge(e[0], e[1]);
    }
  }

  int size() {
    return vertices.length;
  }

  void addVertex(int val) {
    int n = size();
    vertices.add(val);

    List<int> newRow = List.filled(n, 0, growable: true);
    adjMat.add(newRow);

    for (List<int> row in adjMat) {
      row.add(0);
    }
  }

  void removeVertex(int index) {
    if (index >= size()) {
      throw IndexError;
    }
    vertices.removeAt(index);
    adjMat.removeAt(index);
    for (List<int> row in adjMat) {
      row.removeAt(index);
    }
  }

  void addEdge(int i, int j) {
    if (i < 0 || j < 0 || i >= size() || j >= size() || i == j) {
      throw IndexError;
    }

    adjMat[i][j] = 1;
    adjMat[j][i] = 1;
  }

  void removeEdge(int i, int j) {
    if (i < 0 || j < 0 || i >= size() || j >= size() || i == j) {
      throw IndexError;
    }

    adjMat[i][j] = 0;
    adjMat[j][i] = 0;
  }

  void printAdjMat() {
    print("顶点列表 = $vertices");
    print("邻接矩阵 = ");
    printMatrix(adjMat);
  }
}

/* Print a matrix (Array) */
void printMatrix(List<List<int>> matrix) {
  print("[");
  for (List<int> row in matrix) {
    print("  $row,");
  }
  print("]");
}

void main() {
  /* 初始化无向图 */
  // 请注意，edges 元素代表顶点索引，即对应 vertices 元素索引
  List<int> vertices = [1, 3, 2, 5, 4];
  List<List<int>> edges = [
    [0, 1],
    [0, 3],
    [1, 2],
    [2, 3],
    [2, 4],
    [3, 4],
  ];
  GraphAdjMat graph = GraphAdjMat(vertices, edges);
  print("\n初始化后，图为");
  graph.printAdjMat();

  /* 添加边 */
  // 顶点 1, 2 的索引分别为 0, 2
  graph.addEdge(0, 2);
  print("\n添加边 1-2 后，图为");
  graph.printAdjMat();

  /* 删除边 */
  // 顶点 1, 3 的索引分别为 0, 1
  graph.removeEdge(0, 1);
  print("\n删除边 1-3 后，图为");
  graph.printAdjMat();

  /* 添加顶点 */
  graph.addVertex(6);
  print("\n添加顶点 6 后，图为");
  graph.printAdjMat();

  /* 删除顶点 */
  // 顶点 3 的索引为 1
  graph.removeVertex(1);
  print("\n删除顶点 3 后，图为");
  graph.printAdjMat();
}
