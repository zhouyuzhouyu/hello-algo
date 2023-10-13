import 'binary_tree_node.dart';
import 'binary_tree_search.dart';

void main() {
  TreeNode n1 = TreeNode(1);
  TreeNode n2 = TreeNode(2);
  TreeNode n3 = TreeNode(3);
  TreeNode n4 = TreeNode(4);
  TreeNode n5 = TreeNode(5);

  n3.left = n2;
  n3.right = n4;
  n2.left = n1;
  n4.right = n5;

  // 在n1 -> n2 中间插入节点 p
  // TreeNode p = TreeNode(0);
  // var n1L = n1.left;
  // n1.left = p;
  // p.left = n1L;

  // // 删除节点 p
  // n1.left = n1.left?.left;
}
