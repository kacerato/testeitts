.class public Lcom/google/common/util/concurrent/S$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/S$c$a;
    }
.end annotation

.annotation build Lv2/d;
.end annotation


# static fields
.field public static final a:Lcom/google/common/util/concurrent/S$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/common/util/concurrent/S$c;->a()Lcom/google/common/util/concurrent/S$b;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/S$c;->a:Lcom/google/common/util/concurrent/S$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/util/concurrent/S$b;
    .locals 1

    invoke-static {}, Lcom/google/common/util/concurrent/S;->k()Lcom/google/common/util/concurrent/S$b;

    move-result-object v0

    return-object v0
.end method
