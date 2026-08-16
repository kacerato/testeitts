.class public final synthetic LN2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT2/k;


# static fields
.field public static final synthetic a:LN2/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LN2/b;

    invoke-direct {v0}, LN2/b;-><init>()V

    sput-object v0, LN2/b;->a:LN2/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(LT2/h;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;->zza(LT2/h;)LM2/a;

    move-result-object p1

    return-object p1
.end method
