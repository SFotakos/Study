package sfotakos.todo.home;

import sfotakos.todo.BasePresenter;

public interface HomePresenter extends BasePresenter<HomeView> {
    void addTask();
    void removeTask();
}
