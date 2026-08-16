package l7;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine2.R;

public class C14056a extends RecyclerView.ViewHolder {

    public View f96180a;

    public TextView f96181b;

    public ImageView f96182c;

    public View f96183d;

    public FrameLayout f96184e;

    public View f96185f;

    public View f96186g;

    public View f96187h;

    public View f96188i;

    public TextView f96189j;

    public ImageView f96190k;

    public C14056a(View v10) {
        super(v10);
        this.f96180a = v10;
        this.f96183d = v10.findViewById(R.id.toucharea);
        this.f96184e = (FrameLayout) v10.findViewById(R.id.frameLayout);
        this.f96181b = (TextView) v10.findViewById(R.id.name);
        this.f96182c = (ImageView) v10.findViewById(R.id.icon);
        this.f96190k = (ImageView) v10.findViewById(R.id.subIcon);
        this.f96189j = (TextView) v10.findViewById(R.id.description);
        this.f96185f = v10.findViewById(R.id.dots);
        this.f96186g = v10.findViewById(R.id.dotsBackground);
        this.f96187h = v10.findViewById(R.id.frameLayout);
        this.f96188i = v10.findViewById(R.id.tittleBackground);
    }
}
