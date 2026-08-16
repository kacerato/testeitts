.class public Lde/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lde/h;


# direct methods
.method public constructor <init>(Lde/h;)V
    .locals 0

    iput-object p1, p0, Lde/h$b;->b:Lde/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lde/h$b;->a:Z

    return-void
.end method


# virtual methods
.method public a(S)Z
    .locals 1

    iget-object v0, p0, Lde/h$b;->b:Lde/h;

    invoke-virtual {v0, p1}, Lde/h;->d(S)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lde/h$b;->a:Z

    :cond_0
    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lde/h$b;->a:Z

    return v0
.end method
