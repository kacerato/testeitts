.class public LD9/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx8/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LD9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, LD9/a;->a()LMc/b;

    move-result-object v0

    invoke-virtual {v0}, LMc/b;->clear()V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, LD9/a;->a()LMc/b;

    move-result-object v0

    invoke-virtual {v0}, LMc/b;->clear()V

    return-void
.end method
