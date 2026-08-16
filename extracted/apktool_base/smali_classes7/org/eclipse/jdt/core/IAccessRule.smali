.class public interface abstract Lorg/eclipse/jdt/core/IAccessRule;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IGNORE_IF_BETTER:I = 0x100

.field public static final K_ACCESSIBLE:I = 0x0

.field public static final K_DISCOURAGED:I = 0x2

.field public static final K_NON_ACCESSIBLE:I = 0x1


# virtual methods
.method public abstract getKind()I
.end method

.method public abstract getPattern()Lorg/eclipse/core/runtime/IPath;
.end method

.method public abstract ignoreIfBetter()Z
.end method
