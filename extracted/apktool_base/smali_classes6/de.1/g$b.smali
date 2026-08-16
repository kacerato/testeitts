.class public Lde/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lde/g;


# direct methods
.method public constructor <init>(Lde/g;)V
    .locals 0

    iput-object p1, p0, Lde/g$b;->b:Lde/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lde/g$b;->a:Z

    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 1

    iget-object v0, p0, Lde/g$b;->b:Lde/g;

    invoke-virtual {v0, p1, p2}, Lde/g;->e(J)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lde/g$b;->a:Z

    :cond_0
    return p2
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lde/g$b;->a:Z

    return v0
.end method
