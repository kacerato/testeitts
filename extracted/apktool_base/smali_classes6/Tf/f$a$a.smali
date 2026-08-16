.class public final LTf/f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LTf/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:LTf/f$a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LTf/f$a$a;

    invoke-direct {v0}, LTf/f$a$a;-><init>()V

    sput-object v0, LTf/f$a$a;->b:LTf/f$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    sget-object v0, LTf/f;->b:LTf/f$a;

    return-object v0
.end method
