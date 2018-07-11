package sfotakos.todo.home;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.StringRes;
import android.support.design.widget.Snackbar;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import sfotakos.todo.R;

/**
 * A simple {@link Fragment} subclass.
 */
public class HomeFragment extends Fragment implements HomeView {

    public HomeFragment() {
        // Required empty public constructor
    }

    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        return inflater.inflate(R.layout.fragment_home, container, false);
    }

    @Override
    public void showTaskAdded() {
        showSnackbar(R.string.home_task_added);
    }

    @Override
    public void showTaskRemoved() {
        showSnackbar(R.string.home_task_removed);
    }

    @Override
    public void showGenericError(String error) {
        showSnackbar(error);
    }

    private void showSnackbar(String message) {
        final View view = getView();
        if (view != null) {
            Snackbar.make(view, message, Snackbar.LENGTH_LONG).show();
        }
    }

    private void showSnackbar(@StringRes int res) {
        final View view = getView();
        if (view != null) {
            Snackbar.make(view, res, Snackbar.LENGTH_LONG).show();
        }
    }
}
