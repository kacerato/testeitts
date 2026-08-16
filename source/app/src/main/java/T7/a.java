package T7;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine2.R;

public class a extends RecyclerView.ViewHolder {

    public View f24094a;

    public TextView f24095b;

    public ImageView f24096c;

    public View f24097d;

    public FrameLayout f24098e;

    public View f24099f;

    public View f24100g;

    public View f24101h;

    public View f24102i;

    public TextView f24103j;

    public ImageView f24104k;

    public a(View v10) {
        super(v10);
        this.f24094a = v10;
        this.f24097d = v10.findViewById(R.id.toucharea);
        this.f24098e = (FrameLayout) v10.findViewById(R.id.frameLayout);
        this.f24095b = (TextView) v10.findViewById(R.id.name);
        this.f24096c = (ImageView) v10.findViewById(R.id.icon);
        this.f24104k = (ImageView) v10.findViewById(R.id.subIcon);
        this.f24103j = (TextView) v10.findViewById(R.id.description);
        this.f24099f = v10.findViewById(R.id.dots);
        this.f24100g = v10.findViewById(R.id.dotsBackground);
        this.f24101h = v10.findViewById(R.id.frameLayout);
        this.f24102i = v10.findViewById(R.id.tittleBackground);
    }
}
