.class public final Leg/N$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyf/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leg/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyf/j$c<",
        "Leg/N;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:Leg/N$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leg/N$b;

    invoke-direct {v0}, Leg/N$b;-><init>()V

    sput-object v0, Leg/N$b;->b:Leg/N$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
