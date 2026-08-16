package w6;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

public class C15972c extends RecyclerView.ItemDecoration {

    public final int f127335a;

    public C15972c(int verticalSpaceHeight) {
        this.f127335a = verticalSpaceHeight;
    }

    @Override
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
        if (parent.getChildAdapterPosition(view) != parent.getAdapter().getItemCount() - 1) {
            outRect.bottom = this.f127335a;
        }
    }
}
