package com.itsmagic.engine.Activities.Editor.Panels.AI;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.itsmagic.engine2.R;
import e7.AbstractC13043b;

public class a extends AbstractC13043b {

    public TextView f71189b;

    public ImageView f71190c;

    public TextView f71191d;

    public Button f71192e;

    public a(View viewBinding) {
        super(viewBinding);
        this.f71189b = (TextView) viewBinding.findViewById(R.id.title);
        this.f71190c = (ImageView) viewBinding.findViewById(R.id.imageView38);
        this.f71192e = (Button) viewBinding.findViewById(R.id.copy);
        this.f71191d = (TextView) viewBinding.findViewById(R.id.artStyle);
    }

    @Override
    public void b(View root) {
    }
}
