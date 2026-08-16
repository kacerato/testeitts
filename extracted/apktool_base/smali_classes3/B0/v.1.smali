.class public final synthetic LB0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/j;


# static fields
.field public static final synthetic a:LB0/v;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LB0/v;

    invoke-direct {v0}, LB0/v;-><init>()V

    sput-object v0, LB0/v;->a:LB0/v;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lv1/k;
    .locals 0

    check-cast p1, Ljava/util/Map;

    sget p1, LB0/h;->h:I

    const/4 p1, 0x0

    invoke-static {p1}, Lv1/n;->g(Ljava/lang/Object;)Lv1/k;

    move-result-object p1

    return-object p1
.end method
