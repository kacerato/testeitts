.class public final synthetic LYg/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMf/l;


# instance fields
.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LYg/f;->b:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LYg/f;->b:F

    check-cast p1, LZg/a;

    invoke-static {v0, p1}, LYg/j;->g(FLZg/a;)Lnf/P0;

    move-result-object p1

    return-object p1
.end method
