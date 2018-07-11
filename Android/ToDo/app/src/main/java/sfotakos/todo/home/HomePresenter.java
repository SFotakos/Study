package sfotakos.todo.home;

import sfotakos.todo.BasePresenter;
import sfotakos.todo.Task;

public interface HomePresenter extends BasePresenter<HomeView> {
    void add(Task task);
    void complete(Task task);
    void remove(Task task);
}
