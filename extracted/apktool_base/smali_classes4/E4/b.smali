.class public final synthetic LE4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:LE4/d;


# direct methods
.method public synthetic constructor <init>(LE4/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE4/b;->b:LE4/d;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, LE4/b;->b:LE4/d;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, LE4/d;->q1(LE4/d;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
