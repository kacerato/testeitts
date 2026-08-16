package com.itsmagic.engine.Activities.Editor.Panels.TerrainTools;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Pro.TerrainManagerPro;

/**
 * Sub-Tab: Terrain Settings, Physics Baking & Heightmap I/O.
 * Configures Dimensions, GeoMipMap LOD, Bullet Physics Heightfield Shape, and 16-bit RAW/PNG I/O.
 */
public class TerrainSettingsSubTab {

    private final Context context;
    private final ScrollView scrollContainer;
    private final TerrainManagerPro terrainManager;

    public TerrainSettingsSubTab(Context context) {
        this.context = context;
        this.terrainManager = TerrainManagerPro.getInstance();
        this.scrollContainer = new ScrollView(context);
        buildUI();
    }

    private void buildUI() {
        LinearLayout layout = new LinearLayout(context);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setPadding(20, 16, 20, 24);

        // Section Title
        TextView header = new TextView(context);
        header.setText("TERRAIN SETTINGS & I/O");
        header.setTextColor(Color.parseColor("#00E5FF"));
        header.setTextSize(14);
        header.setTypeface(null, android.graphics.Typeface.BOLD);
        header.setPadding(0, 0, 0, 14);
        layout.addView(header);

        // Resolution Info
        TextView txtRes = new TextView(context);
        txtRes.setText("Heightmap Resolution: 1025 x 1025 (16-bit precision)\nTerrain Size: 1000m x 1000m x 300m\nLOD Pixel Error: 5.0 (GeoMipMap Quadtree)");
        txtRes.setTextColor(Color.WHITE);
        txtRes.setTextSize(11);
        txtRes.setPadding(0, 0, 0, 16);
        layout.addView(txtRes);

        // Bake Physics Button
        Button btnBakePhysics = new Button(context);
        btnBakePhysics.setText("⚙ Bake Bullet Physics Heightfield (libbulletjme)");
        btnBakePhysics.setTextColor(Color.WHITE);
        btnBakePhysics.setBackgroundColor(Color.parseColor("#2E7D32"));
        btnBakePhysics.setPadding(0, 14, 0, 14);
        layout.addView(btnBakePhysics);

        // Import RAW/PNG
        Button btnImportRaw = new Button(context);
        btnImportRaw.setText("📥 Import Heightmap (16-bit RAW / PNG)");
        btnImportRaw.setTextColor(Color.WHITE);
        btnImportRaw.setBackgroundColor(Color.parseColor("#455A64"));
        layout.addView(btnImportRaw);

        // Export RAW/OBJ
        Button btnExport = new Button(context);
        btnExport.setText("📤 Export Heightmap (16-bit RAW / OBJ Mesh)");
        btnExport.setTextColor(Color.WHITE);
        btnExport.setBackgroundColor(Color.parseColor("#455A64"));
        layout.addView(btnExport);

        scrollContainer.addView(layout);
    }

    public View getView() {
        return scrollContainer;
    }
}
