import 'dart:collection';

class Graph {
  HashMap<int, List<int>> map = HashMap();

  void insert(int vertex, int edge, bool isDirect) {
    if (!map.containsKey(vertex)) {
      map[vertex] = [];
    }

    if (!map.containsKey(edge)) {
      map[edge] = [];
    }

    map[vertex]!.add(edge);
    if (isDirect) {
      map[edge]!.add(vertex);
    }
  }

  void remove(int data) {
    if (map.containsKey(data)) {
      map.remove(data);

      map.forEach((key, value) {
        value.remove(data);
      });
    }
  }

  void bfsTraversal(int strVertex) {
    Queue queue = Queue();
    Set visited = Set();

    queue.add(strVertex);
    visited.add(strVertex);

    while (queue.isNotEmpty) {
      int cuVertex = queue.removeFirst();
      print(cuVertex);

      List<int>? lists = map[cuVertex];

      if (lists != null) {
        for (int value in lists) {
          if (!visited.contains(value)) {
            queue.add(value);
            visited.add(value);
          }
        }
      }
    }
    map.keys.forEach((vertex) {
      if (!visited.contains(vertex)) {
        print("Discnnected  Vertex: $vertex");
      }
    });
  }

 

  void display() {
    map.forEach((key, value) {
      print("$key :$value");
    });
  }
}

void main(List<String> args) {
  Graph graph = Graph();

  graph.insert(4, 5, true);
  graph.insert(5, 7, true);
  graph.insert(7, 47, true);
  graph.insert(4, 37, true);
  graph.insert(16, 47, true);
  graph.dfs();
}


