import java.io.*;
import java.io.StringWriter;
import java.util.*;

import org.asciidoctor.*;
import static org.asciidoctor.Asciidoctor.Factory.create;
import static org.asciidoctor.AttributesBuilder.attributes;
import static org.asciidoctor.OptionsBuilder.options;

public class T {

  public static void main(String[] args) throws Exception {
    Asciidoctor asciidoctor = create();

    Attributes attributes = attributes().attributes("data-uri icons=font toc=right numbered source-highlighter=pygments").get();
    Options options = new Options();
    options.setAttributes(attributes);
    options.setInPlace(true);
    String outfile = asciidoctor.convertFile(new File(args[0]), options);
  }
}
