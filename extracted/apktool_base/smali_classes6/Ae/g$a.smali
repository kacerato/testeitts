.class public LAe/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAe/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:LAe/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LAe/g;

    invoke-direct {v0}, LAe/g;-><init>()V

    sput-object v0, LAe/g$a;->a:LAe/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()LAe/g;
    .locals 1

    sget-object v0, LAe/g$a;->a:LAe/g;

    return-object v0
.end method
