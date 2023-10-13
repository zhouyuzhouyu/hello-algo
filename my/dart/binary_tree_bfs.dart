import 'dart:collection';
import 'binary_tree_node.dart';

List<int> levelOrder(TreeNode? root) {
  Queue<TreeNode?> queue = Queue();
  queue.add(root);
  List<int> res = [];

  while (queue.isNotEmpty) {
    TreeNode? node = queue.removeFirst();
    if (node == null) continue;
    res.add(node.val);
    queue.add(node.left);
    queue.add(node.right);
  }

  return res;
}

void preOrder(TreeNode? node) {
  if (node == null) return;
  print(node.val);
  preOrder(node.left);
  preOrder(node.right);
}

void inOrder(TreeNode? node) {
  if (node == null) return;
  inOrder(node.left);
  print(node.val);
  inOrder(node.right);
}

void postOrder(TreeNode? node) {
  if (node == null) return;
  postOrder(node.left);
  postOrder(node.right);
  print(node.val);
}
