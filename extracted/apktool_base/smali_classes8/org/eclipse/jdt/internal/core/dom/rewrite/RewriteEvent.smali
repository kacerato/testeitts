.class public abstract Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHILDREN_CHANGED:I = 0x8

.field public static final INSERTED:I = 0x1

.field public static final REMOVED:I = 0x2

.field public static final REPLACED:I = 0x4

.field public static final UNCHANGED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getChangeKind()I
.end method

.method public abstract getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;
.end method

.method public abstract getNewValue()Ljava/lang/Object;
.end method

.method public abstract getOriginalValue()Ljava/lang/Object;
.end method

.method public abstract isListRewrite()Z
.end method
