package sfotakos.todo.home;

import sfotakos.todo.Task;

public class HomePresenterImpl implements HomePresenter {

    private HomeView view;
    private boolean isAttached;

    @Override
    public void add(Task task) {

    }

    @Override
    public void complete(Task task) {

    }

    @Override
    public void remove(Task task) {

    }

    @Override
    public void onViewAttached(HomeView view) {
        this.view = view;
        this.isAttached = true;
    }

    @Override
    public void onViewDetached() {
        this.isAttached = false;
    }

    @Override
    public void onDestroyed() {
        this.view = null;
        this.isAttached = false;
    }
}
