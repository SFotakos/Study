package sfotakos.todo;

public interface BasePresenter <T extends BaseView> {
    void onViewAttached(T view);
    void onViewDetached();
    void onDestroyed();
}