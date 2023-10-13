import 'binary_tree_node.dart';

class BinarySearchTree {
  late TreeNode? _root;

  BinarySearchTree(this._root);

  TreeNode? getRoot() {
    return _root;
  }

  TreeNode? search(int num) {
    TreeNode? cur = _root;
    while (cur != null) {
      if (cur.val == num) {
        return cur;
      } else if (cur.val < num) {
        cur = cur.right;
      } else {
        cur = cur.left;
      }
    }
    return null;
  }

  void insert(int num) {
    if (_root == null) {
      _root = TreeNode(num);
      return;
    }

    TreeNode? cur = _root;
    TreeNode? pre = null;

    while (cur != null) {
      pre = cur;
      if (cur.val == num) {
        return;
      } else if (cur.val < num) {
        cur = cur.right;
      } else {
        cur = cur.left;
      }
    }

    if (pre!.val < num) {
      pre.right = TreeNode(num);
    } else {
      pre.left = TreeNode(num);
    }
  }

  void remove(int num) {
    if (_root == null) return;

    TreeNode? cur = _root;
    TreeNode? pre = null;

    while (cur != null) {
      if (cur.val == num) break;
      pre = cur;

      if (cur.val < num) {
        cur = cur.right;
      } else {
        cur = cur.left;
      }
    }

    if (cur == null) return;

    if (cur.left == null || cur.right == null) {
      var child = cur.left ?? cur.right;

      if (child == _root) {
        _root = null;
      } else {
        if (pre!.left == cur) {
          pre.left = child;
        } else {
          pre.right = child;
        }
      }
    } else {
      var curRight = cur.right;
      while (curRight!.left != null) {
        curRight = curRight.left!;
      }

      remove(curRight.val);
      cur.val = curRight.val;
    }
  }
}
