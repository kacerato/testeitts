.class public Lde/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/S;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lde/e;


# direct methods
.method public constructor <init>(Lde/e;)V
    .locals 0

    iput-object p1, p0, Lde/e$b;->b:Lde/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lde/e$b;->a:Z

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    iget-object v0, p0, Lde/e$b;->b:Lde/e;

    invoke-virtual {v0, p1}, Lde/e;->remove(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lde/e$b;->a:Z

    :cond_0
    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lde/e$b;->a:Z

    return v0
.end method
