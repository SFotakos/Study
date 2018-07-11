package sfotakos.todo.home;

import sfotakos.todo.Task;

public class HomePresenterImpl implements HomePresenter {

    private HomeView view;
    private boolean isAttached;

    @Override
    public void add(Task task) {
        //TODO persist task
        if (isAttached){
            view.showTaskAdded();
        }
    }

    @Override
    public void complete(Task task) {
        //TODO update task to completed task
    }

    @Override
    public void remove(Task task) {
        //TODO remove persisted task
        if (isAttached){
            view.showTaskRemoved();
        }
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
