package com.itsmagic.engine.Activities.Editor.Panels.AI;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.itsmagic.engine2.R;
import e7.AbstractC13043b;

public class b extends AbstractC13043b {

    public TextView f71193b;

    public ImageView f71194c;

    public View f71195d;

    public Button f71196e;

    public b(View viewBinding) {
        super(viewBinding);
        this.f71193b = (TextView) viewBinding.findViewById(R.id.title);
        this.f71194c = (ImageView) viewBinding.findViewById(R.id.imageView38);
        this.f71195d = viewBinding.findViewById(R.id.download);
        this.f71196e = (Button) viewBinding.findViewById(R.id.copy);
    }

    @Override
    public void b(View root) {
    }
}
