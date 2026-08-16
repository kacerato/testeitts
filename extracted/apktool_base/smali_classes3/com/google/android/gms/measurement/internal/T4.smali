.class public final synthetic Lcom/google/android/gms/measurement/internal/T4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic b:Lcom/google/android/gms/measurement/internal/T4;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/T4;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/T4;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/T4;->b:Lcom/google/android/gms/measurement/internal/T4;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/android/gms/measurement/internal/C6;

    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/C6;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
