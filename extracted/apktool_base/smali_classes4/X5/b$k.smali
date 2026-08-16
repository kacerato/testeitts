.class public LX5/b$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LX5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LX5/b$k;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(LX5/b$b;)V
    .locals 0

    .line 3
    invoke-direct {p0}, LX5/b$k;-><init>()V

    return-void
.end method
