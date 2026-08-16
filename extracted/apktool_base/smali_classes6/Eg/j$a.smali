.class public LEg/j$a;
.super LEg/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEg/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LBg/m;)V
    .locals 0

    invoke-direct {p0, p4}, LEg/d;-><init>(LBg/m;)V

    iput-object p1, p0, LEg/j$a;->b:Ljava/lang/String;

    iput-object p2, p0, LEg/j$a;->c:Ljava/lang/String;

    iput-object p3, p0, LEg/j$a;->d:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(LEg/j$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LEg/j$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(LEg/j$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LEg/j$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(LEg/j$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LEg/j$a;->b:Ljava/lang/String;

    return-object p0
.end method
