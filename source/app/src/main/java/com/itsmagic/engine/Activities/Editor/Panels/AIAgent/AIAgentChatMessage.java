package com.itsmagic.engine.Activities.Editor.Panels.AIAgent;

import com.google.gson.annotations.Expose;
import java.util.UUID;
import k0.i;

@i
public class AIAgentChatMessage {

    public static final int f71203a = 1;

    public static final int f71204b = 2;

    public static final int f71205c = 3;

    public static final int f71206d = 4;

    @Expose
    private long createdAt;

    @Expose
    private String f71207id;

    @Expose
    private boolean isStreaming;

    @Expose
    private String rawText;

    @Expose
    private int type;

    public AIAgentChatMessage() {
    }

    public static AIAgentChatMessage a(String text, boolean streaming) {
        return new AIAgentChatMessage(UUID.randomUUID().toString(), text, 2, streaming, System.currentTimeMillis());
    }

    public static AIAgentChatMessage b(String text) {
        return new AIAgentChatMessage(UUID.randomUUID().toString(), text, 4, false, System.currentTimeMillis());
    }

    public static AIAgentChatMessage h(String text) {
        return new AIAgentChatMessage(UUID.randomUUID().toString(), text, 3, true, System.currentTimeMillis());
    }

    public static AIAgentChatMessage n(String text) {
        return new AIAgentChatMessage(UUID.randomUUID().toString(), text, 1, false, System.currentTimeMillis());
    }

    public long c() {
        return this.createdAt;
    }

    public String d() {
        return this.f71207id;
    }

    public String e() {
        return this.rawText;
    }

    public int f() {
        return this.type;
    }

    public boolean g() {
        return this.isStreaming;
    }

    public void i(long createdAt) {
        this.createdAt = createdAt;
    }

    public void j(String id2) {
        this.f71207id = id2;
    }

    public void k(String rawText) {
        this.rawText = rawText;
    }

    public void l(boolean streaming) {
        this.isStreaming = streaming;
    }

    public void m(int type) {
        this.type = type;
    }

    public AIAgentChatMessage(String id2, String rawText, int type, boolean isStreaming, long createdAt) {
        this.f71207id = id2;
        this.rawText = rawText;
        this.type = type;
        this.isStreaming = isStreaming;
        this.createdAt = createdAt;
    }
}
