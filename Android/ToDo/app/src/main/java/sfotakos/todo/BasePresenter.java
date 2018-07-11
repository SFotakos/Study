package sfotakos.todo;

public interface BasePresenter <T extends BaseView> {
    void setView(T view);
}