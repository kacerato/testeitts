.class public La2/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:La2/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La2/p;

    invoke-direct {v0}, La2/p;-><init>()V

    sput-object v0, La2/p$a;->a:La2/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
