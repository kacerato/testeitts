.class public LB2/s$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final a:LB2/q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LB2/C;

    const-string v1, "MD5"

    const-string v2, "Hashing.md5()"

    invoke-direct {v0, v1, v2}, LB2/C;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, LB2/s$e;->a:LB2/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
