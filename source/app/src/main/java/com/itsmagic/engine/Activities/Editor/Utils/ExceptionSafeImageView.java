package com.itsmagic.engine.Activities.Editor.Utils;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;

public class ExceptionSafeImageView extends AppCompatImageView {
    public ExceptionSafeImageView(Context context) {
        super(context);
    }

    @Override
    public void onDraw(Canvas canvas) {
        try {
            super.onDraw(canvas);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public ExceptionSafeImageView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
    }

    public ExceptionSafeImageView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
