// Autogenerated from Pigeon (v22.4.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon

package dev.moody.calculator;

import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.RetentionPolicy.CLASS;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import java.io.ByteArrayOutputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/** Generated class from Pigeon. */
@SuppressWarnings({"unused", "unchecked", "CodeBlock2Expr", "RedundantSuppression", "serial"})
public class messages {

  /** Error class for passing custom error details to Flutter via a thrown PlatformException. */
  public static class FlutterError extends RuntimeException {

    /** The error code. */
    public final String code;

    /** The error details. Must be a datatype supported by the api codec. */
    public final Object details;

    public FlutterError(@NonNull String code, @Nullable String message, @Nullable Object details) 
    {
      super(message);
      this.code = code;
      this.details = details;
    }
  }

  @NonNull
  protected static ArrayList<Object> wrapError(@NonNull Throwable exception) {
    ArrayList<Object> errorList = new ArrayList<>(3);
    if (exception instanceof FlutterError) {
      FlutterError error = (FlutterError) exception;
      errorList.add(error.code);
      errorList.add(error.getMessage());
      errorList.add(error.details);
    } else {
      errorList.add(exception.toString());
      errorList.add(exception.getClass().getSimpleName());
      errorList.add(
        "Cause: " + exception.getCause() + ", Stacktrace: " + Log.getStackTraceString(exception));
    }
    return errorList;
  }

  @Target(METHOD)
  @Retention(CLASS)
  @interface CanIgnoreReturnValue {}

  /** Generated class from Pigeon that represents data sent in messages. */
  public static final class GDGMessage {
    private @Nullable String platform;

    public @Nullable String getPlatform() {
      return platform;
    }

    public void setPlatform(@Nullable String setterArg) {
      this.platform = setterArg;
    }

    private @Nullable String date;

    public @Nullable String getDate() {
      return date;
    }

    public void setDate(@Nullable String setterArg) {
      this.date = setterArg;
    }

    private @Nullable Long passedParameter;

    public @Nullable Long getPassedParameter() {
      return passedParameter;
    }

    public void setPassedParameter(@Nullable Long setterArg) {
      this.passedParameter = setterArg;
    }

    private @Nullable Boolean isGDGAwesome;

    public @Nullable Boolean getIsGDGAwesome() {
      return isGDGAwesome;
    }

    public void setIsGDGAwesome(@Nullable Boolean setterArg) {
      this.isGDGAwesome = setterArg;
    }

    @Override
    public boolean equals(Object o) {
      if (this == o) { return true; }
      if (o == null || getClass() != o.getClass()) { return false; }
      GDGMessage that = (GDGMessage) o;
      return Objects.equals(platform, that.platform) && Objects.equals(date, that.date) && Objects.equals(passedParameter, that.passedParameter) && Objects.equals(isGDGAwesome, that.isGDGAwesome);
    }

    @Override
    public int hashCode() {
      return Objects.hash(platform, date, passedParameter, isGDGAwesome);
    }

    public static final class Builder {

      private @Nullable String platform;

      @CanIgnoreReturnValue
      public @NonNull Builder setPlatform(@Nullable String setterArg) {
        this.platform = setterArg;
        return this;
      }

      private @Nullable String date;

      @CanIgnoreReturnValue
      public @NonNull Builder setDate(@Nullable String setterArg) {
        this.date = setterArg;
        return this;
      }

      private @Nullable Long passedParameter;

      @CanIgnoreReturnValue
      public @NonNull Builder setPassedParameter(@Nullable Long setterArg) {
        this.passedParameter = setterArg;
        return this;
      }

      private @Nullable Boolean isGDGAwesome;

      @CanIgnoreReturnValue
      public @NonNull Builder setIsGDGAwesome(@Nullable Boolean setterArg) {
        this.isGDGAwesome = setterArg;
        return this;
      }

      public @NonNull GDGMessage build() {
        GDGMessage pigeonReturn = new GDGMessage();
        pigeonReturn.setPlatform(platform);
        pigeonReturn.setDate(date);
        pigeonReturn.setPassedParameter(passedParameter);
        pigeonReturn.setIsGDGAwesome(isGDGAwesome);
        return pigeonReturn;
      }
    }

    @NonNull
    ArrayList<Object> toList() {
      ArrayList<Object> toListResult = new ArrayList<>(4);
      toListResult.add(platform);
      toListResult.add(date);
      toListResult.add(passedParameter);
      toListResult.add(isGDGAwesome);
      return toListResult;
    }

    static @NonNull GDGMessage fromList(@NonNull ArrayList<Object> pigeonVar_list) {
      GDGMessage pigeonResult = new GDGMessage();
      Object platform = pigeonVar_list.get(0);
      pigeonResult.setPlatform((String) platform);
      Object date = pigeonVar_list.get(1);
      pigeonResult.setDate((String) date);
      Object passedParameter = pigeonVar_list.get(2);
      pigeonResult.setPassedParameter((Long) passedParameter);
      Object isGDGAwesome = pigeonVar_list.get(3);
      pigeonResult.setIsGDGAwesome((Boolean) isGDGAwesome);
      return pigeonResult;
    }
  }

  private static class PigeonCodec extends StandardMessageCodec {
    public static final PigeonCodec INSTANCE = new PigeonCodec();

    private PigeonCodec() {}

    @Override
    protected Object readValueOfType(byte type, @NonNull ByteBuffer buffer) {
      switch (type) {
        case (byte) 129:
          return GDGMessage.fromList((ArrayList<Object>) readValue(buffer));
        default:
          return super.readValueOfType(type, buffer);
      }
    }

    @Override
    protected void writeValue(@NonNull ByteArrayOutputStream stream, Object value) {
      if (value instanceof GDGMessage) {
        stream.write(129);
        writeValue(stream, ((GDGMessage) value).toList());
      } else {
        super.writeValue(stream, value);
      }
    }
  }

  /** Generated interface from Pigeon that represents a handler of messages from Flutter. */
  public interface CalculatorApi {

    @NonNull 
    GDGMessage getCalculation(@NonNull Long passedParameter);

    @NonNull 
    Boolean isWorking();

    /** The codec used by CalculatorApi. */
    static @NonNull MessageCodec<Object> getCodec() {
      return PigeonCodec.INSTANCE;
    }
    /**Sets up an instance of `CalculatorApi` to handle messages through the `binaryMessenger`. */
    static void setUp(@NonNull BinaryMessenger binaryMessenger, @Nullable CalculatorApi api) {
      setUp(binaryMessenger, "", api);
    }
    static void setUp(@NonNull BinaryMessenger binaryMessenger, @NonNull String messageChannelSuffix, @Nullable CalculatorApi api) {
      messageChannelSuffix = messageChannelSuffix.isEmpty() ? "" : "." + messageChannelSuffix;
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(
                binaryMessenger, "dev.flutter.pigeon.calculator.CalculatorApi.getCalculation" + messageChannelSuffix, getCodec());
        if (api != null) {
          channel.setMessageHandler(
              (message, reply) -> {
                ArrayList<Object> wrapped = new ArrayList<>();
                ArrayList<Object> args = (ArrayList<Object>) message;
                Long passedParameterArg = (Long) args.get(0);
                try {
                  GDGMessage output = api.getCalculation(passedParameterArg);
                  wrapped.add(0, output);
                }
 catch (Throwable exception) {
                  wrapped = wrapError(exception);
                }
                reply.reply(wrapped);
              });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(
                binaryMessenger, "dev.flutter.pigeon.calculator.CalculatorApi.isWorking" + messageChannelSuffix, getCodec());
        if (api != null) {
          channel.setMessageHandler(
              (message, reply) -> {
                ArrayList<Object> wrapped = new ArrayList<>();
                try {
                  Boolean output = api.isWorking();
                  wrapped.add(0, output);
                }
 catch (Throwable exception) {
                  wrapped = wrapError(exception);
                }
                reply.reply(wrapped);
              });
        } else {
          channel.setMessageHandler(null);
        }
      }
    }
  }
}
