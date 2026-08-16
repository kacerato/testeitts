package com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.Objects;

import com.google.gson.annotations.Expose;
import java.util.Map;

@Deprecated
public class MapResponseData {

    @Expose
    public String status;

    @Expose
    public Map<String, String> values;
}
