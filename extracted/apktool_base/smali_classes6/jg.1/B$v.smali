.class public final Ljg/B$v;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/B;->r()LMf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final b:Ljg/B$v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljg/B$v;

    invoke-direct {v0}, Ljg/B$v;-><init>()V

    sput-object v0, Ljg/B$v;->b:Ljg/B$v;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Void;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljg/B$v;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
