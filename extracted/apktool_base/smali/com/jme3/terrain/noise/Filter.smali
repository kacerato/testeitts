.class public interface abstract Lcom/jme3/terrain/noise/Filter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addPostFilter(Lcom/jme3/terrain/noise/Filter;)Lcom/jme3/terrain/noise/Filter;
.end method

.method public abstract addPreFilter(Lcom/jme3/terrain/noise/Filter;)Lcom/jme3/terrain/noise/Filter;
.end method

.method public abstract doFilter(FFFLjava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;
.end method

.method public abstract getMargin(II)I
.end method

.method public abstract isEnabled()Z
.end method
