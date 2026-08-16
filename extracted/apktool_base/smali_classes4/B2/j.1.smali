.class public final LB2/j;
.super LB2/c;
.source "SourceFile"


# annotations
.annotation runtime LB2/k;
.end annotation

.annotation runtime LI2/j;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LB2/j$a;
    }
.end annotation


# static fields
.field public static final b:LB2/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LB2/j;

    invoke-direct {v0}, LB2/j;-><init>()V

    sput-object v0, LB2/j;->b:LB2/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LB2/c;-><init>()V

    return-void
.end method


# virtual methods
.method public h()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public i()LB2/r;
    .locals 1

    new-instance v0, LB2/j$a;

    invoke-direct {v0}, LB2/j$a;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Hashing.crc32c()"

    return-object v0
.end method
