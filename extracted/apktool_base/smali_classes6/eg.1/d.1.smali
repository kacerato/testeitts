.class public final Leg/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/Z0;


# static fields
.field public static final b:Leg/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leg/d;

    invoke-direct {v0}, Leg/d;-><init>()V

    sput-object v0, Leg/d;->b:Leg/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Active"

    return-object v0
.end method
