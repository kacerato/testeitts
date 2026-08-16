.class public abstract LNg/f$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNg/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "h"
.end annotation


# static fields
.field public static final a:LNg/f$h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LNg/f$h$a;

    invoke-direct {v0}, LNg/f$h$a;-><init>()V

    sput-object v0, LNg/f$h;->a:LNg/f$h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(LNg/f;)V
    .locals 0

    return-void
.end method

.method public abstract f(LNg/h;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
