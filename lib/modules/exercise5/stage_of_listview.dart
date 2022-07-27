import 'package:ex_day_2/modules/exercise4/models/post.dart';
import 'package:ex_day_2/modules/exercise4/models/service.dart';

class StageOfListView {
  List<Post>? _posts = [];
  List<Post>? get posts => _posts;

  bool _loading = false;
  bool get loading => _loading;

  bool _error = false;
  bool get error => _error;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  Service _service = Service();

  void setError(bool value, String? message) {
    _error = value;
    _errorMessage = message;
  }

  void setLoading(bool value) {
    _loading = value;
  }

  void setData(List<Post>? value) {
    _posts = value;
  }

  Future<void> getAllPost() async {
    setLoading(true);
    List<Post>? newList = await _service.getPost(
      onError: (message) {
        setError(true, message);
        setLoading(false);
      },
    );
    setData(newList);
    setLoading(false);
  }
}
