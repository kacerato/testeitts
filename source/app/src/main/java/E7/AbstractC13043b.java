package e7;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

public abstract class AbstractC13043b extends RecyclerView.ViewHolder {

    public View f85390a;

    public AbstractC13043b(View viewBinding) {
        super(viewBinding);
        this.f85390a = viewBinding;
    }

    public <T extends View> T a() {
        return (T) this.f85390a;
    }

    public abstract void b(View root);
}
