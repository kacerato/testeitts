.class public LPb/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBb/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LPb/a;->e(Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;)V
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
.method public b()V
    .locals 2

    invoke-static {}, LPb/a;->b()LPb/b;

    move-result-object v0

    invoke-static {}, LPb/a;->a()Lvb/b;

    move-result-object v1

    invoke-virtual {v0, v1}, LPb/b;->b(Lvb/a;)V

    invoke-static {}, LPb/a;->b()LPb/b;

    move-result-object v0

    invoke-static {v0}, Lda/h;->g(Lda/b;)V

    return-void
.end method
