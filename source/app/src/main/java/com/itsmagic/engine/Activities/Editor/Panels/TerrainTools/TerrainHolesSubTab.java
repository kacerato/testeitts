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
 * Sub-Tab: Terrain Holes & Voxel Caves.
 * Paints cutout holes for cave entrances and subterranean voxel transition passages.
 */
public class TerrainHolesSubTab {

    private final Context context;
    private final ScrollView scrollContainer;
    private final TerrainManagerPro terrainManager;

    public TerrainHolesSubTab(Context context) {
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
        header.setText("TERRAIN HOLES & CAVES");
        header.setTextColor(Color.parseColor("#00E5FF"));
        header.setTextSize(14);
        header.setTypeface(null, android.graphics.Typeface.BOLD);
        header.setPadding(0, 0, 0, 14);
        layout.addView(header);

        Button btnCutHole = new Button(context);
        btnCutHole.setText("🕳 Paint Hole Cutout (Caves / Entrances)");
        btnCutHole.setTextColor(Color.WHITE);
        btnCutHole.setBackgroundColor(Color.parseColor("#424242"));
        btnCutHole.setOnClickListener(v -> terrainManager.setActiveTool(TerrainManagerPro.SculptTool.PAINT_HOLES));
        layout.addView(btnCutHole);

        Button btnRepairHole = new Button(context);
        btnRepairHole.setText("🛡 Repair Solid Ground (Fill Holes)");
        btnRepairHole.setTextColor(Color.WHITE);
        btnRepairHole.setBackgroundColor(Color.parseColor("#37474F"));
        layout.addView(btnRepairHole);

        Button btnVoxelConnect = new Button(context);
        btnVoxelConnect.setText("🧱 Connect Subterranean Voxel Chunk (libnative-voxel)");
        btnVoxelConnect.setTextColor(Color.WHITE);
        btnVoxelConnect.setBackgroundColor(Color.parseColor("#4E342E"));
        layout.addView(btnVoxelConnect);

        scrollContainer.addView(layout);
    }

    public View getView() {
        return scrollContainer;
    }
}
