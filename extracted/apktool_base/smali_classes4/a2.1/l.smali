.class public final La2/l;
.super La2/g;
.source "SourceFile"


# instance fields
.field public final b:La2/g;

.field public final c:F


# direct methods
.method public constructor <init>(La2/g;F)V
    .locals 0
    .param p1    # La2/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, La2/g;-><init>()V

    iput-object p1, p0, La2/l;->b:La2/g;

    iput p2, p0, La2/l;->c:F

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, La2/l;->b:La2/g;

    invoke-virtual {v0}, La2/g;->a()Z

    move-result v0

    return v0
.end method

.method public b(FFFLa2/q;)V
    .locals 2
    .param p4    # La2/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, La2/l;->b:La2/g;

    iget v1, p0, La2/l;->c:F

    sub-float/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, La2/g;->b(FFFLa2/q;)V

    return-void
.end method
