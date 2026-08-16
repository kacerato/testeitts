.class public final LBi/r$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LBi/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final c:LBi/r$d;

.field public static final d:LBi/r$d;

.field public static final e:LBi/r$d;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LBi/r$d;

    const-string v1, "ecImplicitlyCA"

    const-class v2, Lki/l;

    invoke-direct {v0, v1, v2}, LBi/r$d;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, LBi/r$d;->c:LBi/r$d;

    new-instance v0, LBi/r$d;

    const-string v1, "dhDefaultParams"

    const-class v2, LXi/q;

    invoke-direct {v0, v1, v2}, LBi/r$d;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, LBi/r$d;->d:LBi/r$d;

    new-instance v0, LBi/r$d;

    const-string v1, "dsaDefaultParams"

    const-class v2, LXi/z;

    invoke-direct {v0, v1, v2}, LBi/r$d;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, LBi/r$d;->e:LBi/r$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LBi/r$d;->a:Ljava/lang/String;

    iput-object p2, p0, LBi/r$d;->b:Ljava/lang/Class;

    return-void
.end method

.method public static synthetic a(LBi/r$d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LBi/r$d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(LBi/r$d;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, LBi/r$d;->b:Ljava/lang/Class;

    return-object p0
.end method
