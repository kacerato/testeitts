.class public abstract LZ/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZ/c$b;,
        LZ/c$c;
    }
.end annotation


# static fields
.field public static final a:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LZ/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LZ/c;-><init>()V

    return-void
.end method

.method public static a()LZ/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LZ/c$c;

    invoke-direct {v0}, LZ/c$c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b(Z)V
.end method

.method public abstract c()V
.end method
