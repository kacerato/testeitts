.class public LH3/g$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LH3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LH3/g$g;->b:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(LH3/g$g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LH3/g$g;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(LH3/g$g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, LH3/g$g;->a:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(LH3/g$g;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LH3/g$g;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LH3/g$g;->b:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LH3/g$g;->a:Ljava/lang/String;

    return-object v0
.end method
