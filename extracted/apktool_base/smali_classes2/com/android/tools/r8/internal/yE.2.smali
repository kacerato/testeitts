.class public Lcom/android/tools/r8/internal/yE;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/yE;

.field public static final b:Lcom/android/tools/r8/internal/tE;

.field public static final c:Lcom/android/tools/r8/internal/uE;

.field public static final d:Lcom/android/tools/r8/internal/vE;

.field public static final e:Lcom/android/tools/r8/internal/wE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/yE;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/yE;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    new-instance v0, Lcom/android/tools/r8/internal/tE;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/tE;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/yE;->b:Lcom/android/tools/r8/internal/tE;

    new-instance v0, Lcom/android/tools/r8/internal/uE;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/uE;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/yE;->c:Lcom/android/tools/r8/internal/uE;

    new-instance v0, Lcom/android/tools/r8/internal/vE;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/vE;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/yE;->d:Lcom/android/tools/r8/internal/vE;

    new-instance v0, Lcom/android/tools/r8/internal/wE;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/wE;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/yE;->e:Lcom/android/tools/r8/internal/wE;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/tE;

    return v0
.end method

.method public b()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/vE;

    return v0
.end method

.method public c()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/wE;

    return v0
.end method
