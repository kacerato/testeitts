.class public Lh4/k$d;
.super Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh4/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lh4/k;


# direct methods
.method public constructor <init>(Lh4/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lh4/k$d;->d:Lh4/k;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;-><init>()V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-object v0, p0, Lh4/k$d;->d:Lh4/k;

    invoke-static {v0}, Lh4/k;->l(Lh4/k;)V

    return-void
.end method
