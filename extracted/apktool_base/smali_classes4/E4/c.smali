.class public final synthetic LE4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:LE4/d;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(LE4/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE4/c;->b:LE4/d;

    iput-object p2, p0, LE4/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, LE4/c;->b:LE4/d;

    iget-object v1, p0, LE4/c;->c:Ljava/lang/String;

    check-cast p1, Le8/c;

    check-cast p2, Le8/c;

    invoke-static {v0, v1, p1, p2}, LE4/d;->p1(LE4/d;Ljava/lang/String;Le8/c;Le8/c;)I

    move-result p1

    return p1
.end method
