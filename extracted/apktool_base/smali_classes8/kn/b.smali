.class public final synthetic Lkn/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkn/e$a;

    check-cast p2, Lkn/e$a;

    invoke-static {p1, p2}, Lkn/e;->a(Lkn/e$a;Lkn/e$a;)I

    move-result p1

    return p1
.end method
