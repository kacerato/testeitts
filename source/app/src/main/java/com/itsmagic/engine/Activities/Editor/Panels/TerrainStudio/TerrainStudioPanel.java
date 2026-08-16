package com.itsmagic.engine.Activities.Editor.Panels.TerrainStudio;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Pro.TerrainManagerPro;

/**
 * Terrain Studio 3D Editor Panel.
 * Primary 3D Viewport Tab positioned alongside NoCodePanel for interactive sculpting and visualization.
 */
public class TerrainStudioPanel extends EditorPanel {

    public static final String PANEL_ID = "TerrainStudioPanel";
    public static final Class<?> PANEL_CLASS = TerrainStudioPanel.class;

    private FrameLayout rootLayout;
    private TerrainViewportHUD viewportHUD;
    private final TerrainBrushGizmoRenderer brushGizmo = new TerrainBrushGizmoRenderer();
    private final TerrainManagerPro terrainManager = TerrainManagerPro.getInstance();

    public static class Factory extends EditorPanel.j {
        @Override
        public Class<?> b() {
            return PANEL_CLASS;
        }

        @Override
        public String c() {
            return PANEL_ID;
        }
    }

    static {
        EditorPanel.a(new Factory());
    }

    public TerrainStudioPanel() {
        super(null, "Terrain Studio", PANEL_ID);
    }

    public TerrainStudioPanel(Context context) {
        super(null, "Terrain Studio", PANEL_ID);
    }

    @Override
    public View C0() {
        Context ctx = M();
        if (rootLayout == null && ctx != null) {
            rootLayout = new FrameLayout(ctx);
            rootLayout.setBackgroundColor(Color.parseColor("#12141A"));

            // 3D Canvas / Touch Handler View
            View canvas3D = new View(ctx);
            canvas3D.setLayoutParams(new FrameLayout.LayoutParams(
                    FrameLayout.LayoutParams.MATCH_PARENT,
                    FrameLayout.LayoutParams.MATCH_PARENT
            ));

            canvas3D.setOnTouchListener((v, event) -> {
                float touchX = event.getX();
                float touchY = event.getY();

                switch (event.getAction()) {
                    case MotionEvent.ACTION_DOWN:
                    case MotionEvent.ACTION_MOVE:
                        brushGizmo.setVisible(true);
                        // Raycast to terrain surface and apply brush
                        terrainManager.applySculptStroke(touchX, touchY, 0.016f);
                        v.invalidate();
                        return true;

                    case MotionEvent.ACTION_UP:
                    case MotionEvent.ACTION_CANCEL:
                        v.invalidate();
                        return true;
                }
                return false;
            });

            rootLayout.addView(canvas3D);

            // Floating Viewport HUD
            viewportHUD = new TerrainViewportHUD(ctx, rootLayout);
        }

        return rootLayout;
    }

    public TerrainBrushGizmoRenderer getBrushGizmo() {
        return brushGizmo;
    }

    public TerrainViewportHUD getViewportHUD() {
        return viewportHUD;
    }
}
