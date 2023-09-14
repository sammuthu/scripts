import thirdparty.XMLLibrary; // Replace with the actual import for your third-party library

public class XMLPrinter {
    public static void buildXMLElementString(XMLLibrary.XMLElement element, int indent, StringBuilder builder) {
        if (element == null) {
            return;
        }

        // Append the element name
        builder.append(" ".repeat(indent)).append("Element Name: ").append(element.getName()).append("\n");

        // Append attributes if any
        for (String attributeName : element.getAttributeNames()) {
            builder.append(" ".repeat(indent + 2)).append("Attribute: ").append(attributeName)
                    .append(" = ").append(element.getAttribute(attributeName)).append("\n");
        }

        // Append text content if any
        String textContent = element.getText();
        if (!textContent.isEmpty()) {
            builder.append(" ".repeat(indent + 2)).append("Text Content: ").append(textContent).append("\n");
        }

        // Recursively process child elements
        for (XMLLibrary.XMLElement child : element.getChildren()) {
            buildXMLElementString(child, indent + 2, builder);
        }
    }

    public static void main(String[] args) {
        // Replace this with your actual XMLElement object
        XMLLibrary.XMLElement rootElement = getRootElement();

        // Create a StringBuilder to store the XML content
        StringBuilder xmlBuilder = new StringBuilder();

        // Call the building function starting with the root element
        buildXMLElementString(rootElement, 0, xmlBuilder);

        // Log or print the StringBuilder value
        System.out.println(xmlBuilder.toString());
    }
}
