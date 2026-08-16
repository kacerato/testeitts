.class public final synthetic LK2/s$c;
.super Lkotlin/jvm/internal/i0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK2/s;->b(LK2/s;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# static fields
.field public static final c:LK2/s$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LK2/s$c;

    invoke-direct {v0}, LK2/s$c;-><init>()V

    sput-object v0, LK2/s$c;->c:LK2/s$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "getSeconds()J"

    const/4 v1, 0x0

    const-class v2, LK2/s;

    const-string v3, "seconds"

    invoke-direct {p0, v2, v3, v0, v1}, Lkotlin/jvm/internal/i0;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    check-cast p1, LK2/s;

    invoke-virtual {p1}, LK2/s;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
