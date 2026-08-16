.class public Lh4/k$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh4/k;->B()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/text/SimpleDateFormat;

.field public final synthetic c:Lh4/k;


# direct methods
.method public constructor <init>(Lh4/k;Ljava/text/SimpleDateFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$sdfUtc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lh4/k$i;->c:Lh4/k;

    iput-object p2, p0, Lh4/k$i;->b:Ljava/text/SimpleDateFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    iget-object v0, p0, Lh4/k$i;->c:Lh4/k;

    iget-object v1, p0, Lh4/k$i;->b:Ljava/text/SimpleDateFormat;

    invoke-static {v0, p1, v1}, Lh4/k;->i(Lh4/k;Ljava/io/File;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object p1

    iget-object v0, p0, Lh4/k$i;->c:Lh4/k;

    iget-object v1, p0, Lh4/k$i;->b:Ljava/text/SimpleDateFormat;

    invoke-static {v0, p2, v1}, Lh4/k;->i(Lh4/k;Ljava/io/File;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lh4/k$i;->a(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
